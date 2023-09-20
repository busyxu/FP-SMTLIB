(declare-fun b_ack!573 () (_ BitVec 32))
(declare-fun a_ack!575 () (_ BitVec 32))
(declare-fun c_ack!574 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!573 #x00000000)))
(assert (not (bvslt a_ack!575 b_ack!573)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!574) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!574) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!573)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!574) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!574) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!574))
                           ((_ to_fp 11 53) c_ack!574))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!574))
                           ((_ to_fp 11 53) c_ack!574)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!574))
                           ((_ to_fp 11 53) c_ack!574)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!574))
                           ((_ to_fp 11 53) c_ack!574)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fe0000000000000
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
