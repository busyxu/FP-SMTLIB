(declare-fun c_ack!1961 () (_ BitVec 64))
(declare-fun b_ack!1960 () (_ BitVec 32))
(declare-fun a_ack!1962 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1961) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1962 b_ack!1960)))
(assert (not (= #x00000000 b_ack!1960)))
(assert (not (= #x00000000 a_ack!1962)))
(assert (not (bvslt b_ack!1960 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1961) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1961) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1962 #x00000000)))
(assert (not (bvslt a_ack!1962 #x00000000)))
(assert (not (= a_ack!1962 b_ack!1960)))
(assert (not (= #x00000001 a_ack!1962)))
(assert (not (= b_ack!1960 (bvadd #x00000001 a_ack!1962))))
(assert (not (= a_ack!1962 (bvadd #x00000001 b_ack!1960))))
(assert (not (= a_ack!1962 (bvadd #x00000002 b_ack!1960))))
(assert (not (= b_ack!1960 (bvmul #x00000002 a_ack!1962))))
(assert (bvslt b_ack!1960 #x0000000a))
(assert (bvslt a_ack!1962 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1961))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1960)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1962)
                          (fp.abs ((_ to_fp 11 53) c_ack!1961))))))
  (not a!1)))
(assert (not (bvslt a_ack!1962 b_ack!1960)))
(assert (not (bvslt a_ack!1962 b_ack!1960)))
(assert (not (bvslt a_ack!1962 b_ack!1960)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1961) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1962)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1960)
                                   ((_ to_fp 11 53) c_ack!1961))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1962)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1961)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1960)
                                    ((_ to_fp 11 53) c_ack!1961))))))
  (not (bvslt b_ack!1960
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1960)
                                    ((_ to_fp 11 53) c_ack!1961))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1960)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!1961))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1961)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1961)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1960)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!1961)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)))))
  (FPCHECK_FDIV_INVALID
    (fp.add roundNearestTiesToEven
            a!4
            (fp.mul roundNearestTiesToEven a!5 (CF_exp c_ack!1961)))
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvmul ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1960)))))))

(check-sat)
(exit)
