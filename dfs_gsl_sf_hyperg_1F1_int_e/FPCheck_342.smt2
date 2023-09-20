(declare-fun c_ack!1829 () (_ BitVec 64))
(declare-fun b_ack!1828 () (_ BitVec 32))
(declare-fun a_ack!1830 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1829) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1830 b_ack!1828)))
(assert (not (= #x00000000 b_ack!1828)))
(assert (not (= #x00000000 a_ack!1830)))
(assert (not (bvslt b_ack!1828 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1829) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1829) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1830 #x00000000)))
(assert (not (bvslt a_ack!1830 #x00000000)))
(assert (not (= a_ack!1830 b_ack!1828)))
(assert (not (= #x00000001 a_ack!1830)))
(assert (not (= b_ack!1828 (bvadd #x00000001 a_ack!1830))))
(assert (not (= a_ack!1830 (bvadd #x00000001 b_ack!1828))))
(assert (not (= a_ack!1830 (bvadd #x00000002 b_ack!1828))))
(assert (not (= b_ack!1828 (bvmul #x00000002 a_ack!1830))))
(assert (bvslt b_ack!1828 #x0000000a))
(assert (bvslt a_ack!1830 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1829))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1828)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1830)
                          (fp.abs ((_ to_fp 11 53) c_ack!1829))))))
  (not a!1)))
(assert (not (bvslt a_ack!1830 b_ack!1828)))
(assert (not (bvslt a_ack!1830 b_ack!1828)))
(assert (not (bvslt a_ack!1830 b_ack!1828)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1829) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1830)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1828)
                                   ((_ to_fp 11 53) c_ack!1829))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1830)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1829)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1828)
                                    ((_ to_fp 11 53) c_ack!1829))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1829)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
