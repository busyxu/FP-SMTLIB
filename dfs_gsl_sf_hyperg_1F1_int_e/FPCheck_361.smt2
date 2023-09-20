(declare-fun c_ack!1922 () (_ BitVec 64))
(declare-fun b_ack!1921 () (_ BitVec 32))
(declare-fun a_ack!1923 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1923 b_ack!1921)))
(assert (not (= #x00000000 b_ack!1921)))
(assert (not (= #x00000000 a_ack!1923)))
(assert (not (bvslt b_ack!1921 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1923 #x00000000)))
(assert (not (bvslt a_ack!1923 #x00000000)))
(assert (not (= a_ack!1923 b_ack!1921)))
(assert (not (= #x00000001 a_ack!1923)))
(assert (not (= b_ack!1921 (bvadd #x00000001 a_ack!1923))))
(assert (not (= a_ack!1923 (bvadd #x00000001 b_ack!1921))))
(assert (not (= a_ack!1923 (bvadd #x00000002 b_ack!1921))))
(assert (not (= b_ack!1921 (bvmul #x00000002 a_ack!1923))))
(assert (bvslt b_ack!1921 #x0000000a))
(assert (bvslt a_ack!1923 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1922))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1921)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1923)
                          (fp.abs ((_ to_fp 11 53) c_ack!1922))))))
  (not a!1)))
(assert (not (bvslt a_ack!1923 b_ack!1921)))
(assert (not (bvslt a_ack!1923 b_ack!1921)))
(assert (not (bvslt a_ack!1923 b_ack!1921)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1923)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1921)
                                   ((_ to_fp 11 53) c_ack!1922))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1923)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1922)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1921)
                                    ((_ to_fp 11 53) c_ack!1922))))))
  (not (bvslt b_ack!1921
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1921)
                                    ((_ to_fp 11 53) c_ack!1922))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1922)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1921)))))
  (FPCHECK_FMUL_UNDERFLOW a!2 (CF_exp c_ack!1922)))))

(check-sat)
(exit)
