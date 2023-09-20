(declare-fun c_ack!1976 () (_ BitVec 64))
(declare-fun b_ack!1975 () (_ BitVec 32))
(declare-fun a_ack!1977 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1976) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1977 b_ack!1975)))
(assert (not (= #x00000000 b_ack!1975)))
(assert (not (= #x00000000 a_ack!1977)))
(assert (not (bvslt b_ack!1975 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1976) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1976) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1977 #x00000000)))
(assert (not (bvslt a_ack!1977 #x00000000)))
(assert (not (= a_ack!1977 b_ack!1975)))
(assert (not (= #x00000001 a_ack!1977)))
(assert (not (= b_ack!1975 (bvadd #x00000001 a_ack!1977))))
(assert (not (= a_ack!1977 (bvadd #x00000001 b_ack!1975))))
(assert (not (= a_ack!1977 (bvadd #x00000002 b_ack!1975))))
(assert (not (= b_ack!1975 (bvmul #x00000002 a_ack!1977))))
(assert (bvslt b_ack!1975 #x0000000a))
(assert (bvslt a_ack!1977 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1976))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1975)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1977)
                          (fp.abs ((_ to_fp 11 53) c_ack!1976))))))
  (not a!1)))
(assert (not (bvslt a_ack!1977 b_ack!1975)))
(assert (not (bvslt a_ack!1977 b_ack!1975)))
(assert (not (bvslt a_ack!1977 b_ack!1975)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1976) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1977)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1975)
                                   ((_ to_fp 11 53) c_ack!1976))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1977)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1976)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1975)
                                    ((_ to_fp 11 53) c_ack!1976))))))
  (bvslt b_ack!1975 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1975)
                                    ((_ to_fp 11 53) c_ack!1976))))))
  (FPCHECK_FSUB_OVERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
    c_ack!1976)))

(check-sat)
(exit)
