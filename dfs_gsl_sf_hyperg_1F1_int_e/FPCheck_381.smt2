(declare-fun c_ack!2030 () (_ BitVec 64))
(declare-fun b_ack!2029 () (_ BitVec 32))
(declare-fun a_ack!2031 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2030) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!2031 b_ack!2029)))
(assert (not (= #x00000000 b_ack!2029)))
(assert (not (= #x00000000 a_ack!2031)))
(assert (not (bvslt b_ack!2029 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2030) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2030) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!2031 #x00000000)))
(assert (not (bvslt a_ack!2031 #x00000000)))
(assert (not (= a_ack!2031 b_ack!2029)))
(assert (not (= #x00000001 a_ack!2031)))
(assert (not (= b_ack!2029 (bvadd #x00000001 a_ack!2031))))
(assert (not (= a_ack!2031 (bvadd #x00000001 b_ack!2029))))
(assert (not (= a_ack!2031 (bvadd #x00000002 b_ack!2029))))
(assert (not (= b_ack!2029 (bvmul #x00000002 a_ack!2031))))
(assert (bvslt b_ack!2029 #x0000000a))
(assert (bvslt a_ack!2031 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2030))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2029)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2031)
                          (fp.abs ((_ to_fp 11 53) c_ack!2030))))))
  (not a!1)))
(assert (not (bvslt a_ack!2031 b_ack!2029)))
(assert (not (bvslt a_ack!2031 b_ack!2029)))
(assert (not (bvslt a_ack!2031 b_ack!2029)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2030) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2031)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2029)
                                   ((_ to_fp 11 53) c_ack!2030))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2031)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!2030)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2029)
                                    ((_ to_fp 11 53) c_ack!2030))))))
  (bvslt b_ack!2029 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2029)
                                    ((_ to_fp 11 53) c_ack!2030))))))
(let ((a!2 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2029)
                                    ((_ to_fp 11 53) c_ack!2030))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2030))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   a!3
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (fp.eq a!4 a!2))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2029)
                                    ((_ to_fp 11 53) c_ack!2030))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2030))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2029)
                                    ((_ to_fp 11 53) c_ack!2030))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2030))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
  (fp.eq (fp.div roundNearestTiesToEven a!3 a!2)
         ((_ to_fp 11 53)
           roundNearestTiesToEven
           (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))))
(assert (FPCHECK_FMUL_ACCURACY c_ack!2030 #xbff0000000000000))

(check-sat)
(exit)
