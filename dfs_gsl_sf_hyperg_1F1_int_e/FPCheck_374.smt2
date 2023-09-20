(declare-fun c_ack!1988 () (_ BitVec 64))
(declare-fun b_ack!1987 () (_ BitVec 32))
(declare-fun a_ack!1989 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1988) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1989 b_ack!1987)))
(assert (not (= #x00000000 b_ack!1987)))
(assert (not (= #x00000000 a_ack!1989)))
(assert (not (bvslt b_ack!1987 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1988) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1988) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1989 #x00000000)))
(assert (not (bvslt a_ack!1989 #x00000000)))
(assert (not (= a_ack!1989 b_ack!1987)))
(assert (not (= #x00000001 a_ack!1989)))
(assert (not (= b_ack!1987 (bvadd #x00000001 a_ack!1989))))
(assert (not (= a_ack!1989 (bvadd #x00000001 b_ack!1987))))
(assert (not (= a_ack!1989 (bvadd #x00000002 b_ack!1987))))
(assert (not (= b_ack!1987 (bvmul #x00000002 a_ack!1989))))
(assert (bvslt b_ack!1987 #x0000000a))
(assert (bvslt a_ack!1989 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1988))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1987)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1989)
                          (fp.abs ((_ to_fp 11 53) c_ack!1988))))))
  (not a!1)))
(assert (not (bvslt a_ack!1989 b_ack!1987)))
(assert (not (bvslt a_ack!1989 b_ack!1987)))
(assert (not (bvslt a_ack!1989 b_ack!1987)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1988) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1989)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1987)
                                   ((_ to_fp 11 53) c_ack!1988))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1989)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1988)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1987)
                                    ((_ to_fp 11 53) c_ack!1988))))))
  (bvslt b_ack!1987 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1987)
                                    ((_ to_fp 11 53) c_ack!1988))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!1988))))
  (FPCHECK_FMUL_UNDERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
    a!2))))

(check-sat)
(exit)
