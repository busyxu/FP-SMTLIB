(declare-fun limit_ack!6999 () (_ BitVec 64))
(declare-fun epsabs_ack!7004 () (_ BitVec 64))
(declare-fun a_ack!7005 () (_ BitVec 64))
(declare-fun x1_ack!7000 () (_ BitVec 64))
(declare-fun x2_ack!7001 () (_ BitVec 64))
(declare-fun x3_ack!7002 () (_ BitVec 64))
(declare-fun b_ack!7003 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6999)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7004)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7000) ((_ to_fp 11 53) a_ack!7005))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7001) ((_ to_fp 11 53) x1_ack!7000))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7002) ((_ to_fp 11 53) x2_ack!7001))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7003) ((_ to_fp 11 53) x3_ack!7002))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7005)
                                   ((_ to_fp 11 53) x1_ack!7000))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7000)
                                   ((_ to_fp 11 53) a_ack!7005)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7005)
                                   ((_ to_fp 11 53) x1_ack!7000)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
