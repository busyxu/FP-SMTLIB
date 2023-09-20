(declare-fun c_ack!248 () (_ BitVec 64))
(declare-fun b_ack!247 () (_ BitVec 32))
(declare-fun a_ack!249 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!249 b_ack!247)))
(assert (not (= #x00000000 b_ack!247)))
(assert (not (= #x00000000 a_ack!249)))
(assert (not (bvslt b_ack!247 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!248) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!248) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!249 #x00000000)))
(assert (not (bvslt a_ack!249 #x00000000)))
(assert (not (= a_ack!249 b_ack!247)))
(assert (not (= #x00000001 a_ack!249)))
(assert (not (= b_ack!247 (bvadd #x00000001 a_ack!249))))
(assert (not (= a_ack!249 (bvadd #x00000001 b_ack!247))))
(assert (not (= a_ack!249 (bvadd #x00000002 b_ack!247))))
(assert (not (= b_ack!247 (bvmul #x00000002 a_ack!249))))
(assert (bvslt b_ack!247 #x0000000a))
(assert (bvslt a_ack!249 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!248))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!247)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!249)
                          (fp.abs ((_ to_fp 11 53) c_ack!248))))))
  (not a!1)))
(assert (not (bvslt a_ack!249 b_ack!247)))
(assert (not (bvslt a_ack!249 b_ack!247)))
(assert (not (bvslt a_ack!249 b_ack!247)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!249)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!247)
                                   ((_ to_fp 11 53) c_ack!248))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!249)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!248)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!247)
                                    ((_ to_fp 11 53) c_ack!248))))))
  (FPCHECK_FDIV_ACCURACY
    c_ack!248
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              ((_ fp.to_sbv 32) roundTowardZero a!1))
            ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
