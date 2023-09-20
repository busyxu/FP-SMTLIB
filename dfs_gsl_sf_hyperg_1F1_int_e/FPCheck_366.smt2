(declare-fun c_ack!1946 () (_ BitVec 64))
(declare-fun b_ack!1945 () (_ BitVec 32))
(declare-fun a_ack!1947 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1946) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1947 b_ack!1945)))
(assert (not (= #x00000000 b_ack!1945)))
(assert (not (= #x00000000 a_ack!1947)))
(assert (not (bvslt b_ack!1945 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1946) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1946) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1947 #x00000000)))
(assert (not (bvslt a_ack!1947 #x00000000)))
(assert (not (= a_ack!1947 b_ack!1945)))
(assert (not (= #x00000001 a_ack!1947)))
(assert (not (= b_ack!1945 (bvadd #x00000001 a_ack!1947))))
(assert (not (= a_ack!1947 (bvadd #x00000001 b_ack!1945))))
(assert (not (= a_ack!1947 (bvadd #x00000002 b_ack!1945))))
(assert (not (= b_ack!1945 (bvmul #x00000002 a_ack!1947))))
(assert (bvslt b_ack!1945 #x0000000a))
(assert (bvslt a_ack!1947 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1946))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1945)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1947)
                          (fp.abs ((_ to_fp 11 53) c_ack!1946))))))
  (not a!1)))
(assert (not (bvslt a_ack!1947 b_ack!1945)))
(assert (not (bvslt a_ack!1947 b_ack!1945)))
(assert (not (bvslt a_ack!1947 b_ack!1945)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1946) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1947)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1945)
                                   ((_ to_fp 11 53) c_ack!1946))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1947)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1946)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1945)
                                    ((_ to_fp 11 53) c_ack!1946))))))
  (not (bvslt b_ack!1945
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1945)
                                    ((_ to_fp 11 53) c_ack!1946))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1945)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!1946))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1946)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1946)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1945)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!1946)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.add roundNearestTiesToEven
            a!4
            (fp.mul roundNearestTiesToEven a!5 (CF_exp c_ack!1946)))
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvmul ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1945)))))))

(check-sat)
(exit)
