(declare-fun c_ack!1943 () (_ BitVec 64))
(declare-fun b_ack!1942 () (_ BitVec 32))
(declare-fun a_ack!1944 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1943) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1944 b_ack!1942)))
(assert (not (= #x00000000 b_ack!1942)))
(assert (not (= #x00000000 a_ack!1944)))
(assert (not (bvslt b_ack!1942 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1943) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1943) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1944 #x00000000)))
(assert (not (bvslt a_ack!1944 #x00000000)))
(assert (not (= a_ack!1944 b_ack!1942)))
(assert (not (= #x00000001 a_ack!1944)))
(assert (not (= b_ack!1942 (bvadd #x00000001 a_ack!1944))))
(assert (not (= a_ack!1944 (bvadd #x00000001 b_ack!1942))))
(assert (not (= a_ack!1944 (bvadd #x00000002 b_ack!1942))))
(assert (not (= b_ack!1942 (bvmul #x00000002 a_ack!1944))))
(assert (bvslt b_ack!1942 #x0000000a))
(assert (bvslt a_ack!1944 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1943))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1942)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1944)
                          (fp.abs ((_ to_fp 11 53) c_ack!1943))))))
  (not a!1)))
(assert (not (bvslt a_ack!1944 b_ack!1942)))
(assert (not (bvslt a_ack!1944 b_ack!1942)))
(assert (not (bvslt a_ack!1944 b_ack!1942)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1943) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1944)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1942)
                                   ((_ to_fp 11 53) c_ack!1943))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1944)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1943)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1942)
                                    ((_ to_fp 11 53) c_ack!1943))))))
  (not (bvslt b_ack!1942
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1942)
                                    ((_ to_fp 11 53) c_ack!1943))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1942)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!1943))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1943)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1943)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1942)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!1943)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)))))
  (FPCHECK_FADD_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven a!5 (CF_exp c_ack!1943)))))))

(check-sat)
(exit)
