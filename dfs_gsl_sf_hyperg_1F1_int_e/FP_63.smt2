(declare-fun c_ack!1964 () (_ BitVec 64))
(declare-fun b_ack!1963 () (_ BitVec 32))
(declare-fun a_ack!1965 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1964) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1965 b_ack!1963)))
(assert (not (= #x00000000 b_ack!1963)))
(assert (not (= #x00000000 a_ack!1965)))
(assert (not (bvslt b_ack!1963 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1964) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1964) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1965 #x00000000)))
(assert (not (bvslt a_ack!1965 #x00000000)))
(assert (not (= a_ack!1965 b_ack!1963)))
(assert (not (= #x00000001 a_ack!1965)))
(assert (not (= b_ack!1963 (bvadd #x00000001 a_ack!1965))))
(assert (not (= a_ack!1965 (bvadd #x00000001 b_ack!1963))))
(assert (not (= a_ack!1965 (bvadd #x00000002 b_ack!1963))))
(assert (not (= b_ack!1963 (bvmul #x00000002 a_ack!1965))))
(assert (bvslt b_ack!1963 #x0000000a))
(assert (bvslt a_ack!1965 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1964))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1963)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1965)
                          (fp.abs ((_ to_fp 11 53) c_ack!1964))))))
  (not a!1)))
(assert (not (bvslt a_ack!1965 b_ack!1963)))
(assert (not (bvslt a_ack!1965 b_ack!1963)))
(assert (not (bvslt a_ack!1965 b_ack!1963)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1964) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1965)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1963)
                                   ((_ to_fp 11 53) c_ack!1964))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1965)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1964)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1963)
                                    ((_ to_fp 11 53) c_ack!1964))))))
  (not (bvslt b_ack!1963
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1963)
                                    ((_ to_fp 11 53) c_ack!1964))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1963)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!1964))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1964)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1964)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1963))))
      (a!7 (fp.eq ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    (bvmul ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1963))
                  ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!1964)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)))))
(let ((a!6 (fp.eq (fp.add roundNearestTiesToEven
                          a!4
                          (fp.mul roundNearestTiesToEven
                                  a!5
                                  (CF_exp c_ack!1964)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (and (not a!6) a!7)))))))

(check-sat)
(exit)
