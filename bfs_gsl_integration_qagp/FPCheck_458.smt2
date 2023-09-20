(declare-fun limit_ack!6880 () (_ BitVec 64))
(declare-fun epsabs_ack!6885 () (_ BitVec 64))
(declare-fun a_ack!6886 () (_ BitVec 64))
(declare-fun x1_ack!6881 () (_ BitVec 64))
(declare-fun x2_ack!6882 () (_ BitVec 64))
(declare-fun x3_ack!6883 () (_ BitVec 64))
(declare-fun b_ack!6884 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6880)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6885)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6881) ((_ to_fp 11 53) a_ack!6886))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6882) ((_ to_fp 11 53) x1_ack!6881))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6883) ((_ to_fp 11 53) x2_ack!6882))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6884) ((_ to_fp 11 53) x3_ack!6883))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6886)
                                   ((_ to_fp 11 53) x1_ack!6881))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6881)
                                   ((_ to_fp 11 53) a_ack!6886)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6886)
                    ((_ to_fp 11 53) x1_ack!6881)))
    a!1)))

(check-sat)
(exit)
