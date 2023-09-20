(declare-fun b_ack!631 () (_ BitVec 32))
(declare-fun a_ack!633 () (_ BitVec 32))
(declare-fun c_ack!632 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!631 #x00000000)))
(assert (not (bvslt a_ack!633 #x00000000)))
(assert (= #x00000000 a_ack!633))
(assert (not (bvslt b_ack!631 #x00000000)))
(assert (not (= #x00000000 b_ack!631)))
(assert (not (= #x00000001 b_ack!631)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!632))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!631))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!632))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!631))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!632)
                                   ((_ to_fp 11 53) c_ack!632))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!632))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (bvslt #x00000003 b_ack!631))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!632)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!632)
                                   ((_ to_fp 11 53) c_ack!632))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!632))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x7fefffffffffffff))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!632)
                                   ((_ to_fp 11 53) c_ack!632))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fd3333333333333)))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!632)
                  ((_ to_fp 11 53) c_ack!632))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
