(declare-fun limit_ack!6866 () (_ BitVec 64))
(declare-fun epsabs_ack!6871 () (_ BitVec 64))
(declare-fun a_ack!6872 () (_ BitVec 64))
(declare-fun x1_ack!6867 () (_ BitVec 64))
(declare-fun x2_ack!6868 () (_ BitVec 64))
(declare-fun x3_ack!6869 () (_ BitVec 64))
(declare-fun b_ack!6870 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6866)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6871)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6867) ((_ to_fp 11 53) a_ack!6872))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6868) ((_ to_fp 11 53) x1_ack!6867))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6869) ((_ to_fp 11 53) x2_ack!6868))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6870) ((_ to_fp 11 53) x3_ack!6869))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6872)
                                   ((_ to_fp 11 53) x1_ack!6867))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6867)
                                   ((_ to_fp 11 53) a_ack!6872)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6872)
                    ((_ to_fp 11 53) x1_ack!6867)))
    a!1)))

(check-sat)
(exit)
