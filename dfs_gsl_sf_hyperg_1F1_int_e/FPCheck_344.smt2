(declare-fun c_ack!1838 () (_ BitVec 64))
(declare-fun b_ack!1837 () (_ BitVec 32))
(declare-fun a_ack!1839 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1838) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1839 b_ack!1837)))
(assert (not (= #x00000000 b_ack!1837)))
(assert (not (= #x00000000 a_ack!1839)))
(assert (not (bvslt b_ack!1837 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1838) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1838) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1839 #x00000000)))
(assert (not (bvslt a_ack!1839 #x00000000)))
(assert (not (= a_ack!1839 b_ack!1837)))
(assert (not (= #x00000001 a_ack!1839)))
(assert (not (= b_ack!1837 (bvadd #x00000001 a_ack!1839))))
(assert (not (= a_ack!1839 (bvadd #x00000001 b_ack!1837))))
(assert (not (= a_ack!1839 (bvadd #x00000002 b_ack!1837))))
(assert (not (= b_ack!1837 (bvmul #x00000002 a_ack!1839))))
(assert (bvslt b_ack!1837 #x0000000a))
(assert (bvslt a_ack!1839 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1838))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1837)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1839)
                          (fp.abs ((_ to_fp 11 53) c_ack!1838))))))
  (not a!1)))
(assert (not (bvslt a_ack!1839 b_ack!1837)))
(assert (not (bvslt a_ack!1839 b_ack!1837)))
(assert (not (bvslt a_ack!1839 b_ack!1837)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1838) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1839)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1837)
                                   ((_ to_fp 11 53) c_ack!1838))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1839)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1838)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1837)
                                    ((_ to_fp 11 53) c_ack!1838))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1838)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
