(declare-fun c_ack!2474 () (_ BitVec 64))
(declare-fun b_ack!2473 () (_ BitVec 32))
(declare-fun a_ack!2475 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!2475 b_ack!2473)))
(assert (not (= #x00000000 b_ack!2473)))
(assert (not (= #x00000000 a_ack!2475)))
(assert (not (bvslt b_ack!2473 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2474) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2474) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!2475 #x00000000)))
(assert (not (bvslt a_ack!2475 #x00000000)))
(assert (not (= a_ack!2475 b_ack!2473)))
(assert (not (= #x00000001 a_ack!2475)))
(assert (not (= b_ack!2473 (bvadd #x00000001 a_ack!2475))))
(assert (not (= a_ack!2475 (bvadd #x00000001 b_ack!2473))))
(assert (not (= a_ack!2475 (bvadd #x00000002 b_ack!2473))))
(assert (not (= b_ack!2473 (bvmul #x00000002 a_ack!2475))))
(assert (bvslt b_ack!2473 #x0000000a))
(assert (bvslt a_ack!2475 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2474))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2473)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2475)
                          (fp.abs ((_ to_fp 11 53) c_ack!2474))))))
  (not a!1)))
(assert (not (bvslt a_ack!2475 b_ack!2473)))
(assert (not (bvslt a_ack!2475 b_ack!2473)))
(assert (not (bvslt a_ack!2475 b_ack!2473)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2475)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2473)
                                   ((_ to_fp 11 53) c_ack!2474))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2475)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!2474)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
  (bvslt b_ack!2473 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
(let ((a!2 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2474))))
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
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2474))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2474))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
  (fp.eq (fp.div roundNearestTiesToEven a!3 a!2)
         ((_ to_fp 11 53)
           roundNearestTiesToEven
           (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2474)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2474))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2474)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2474)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2474)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!5 a!6)
                 a!6)
         a!5))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2474)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2474))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2474)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2474)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2474)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!5
                 (fp.sub roundNearestTiesToEven a!5 a!6))
         a!6))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
  (bvslt b_ack!2473 (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
  (bvslt b_ack!2473 (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2473)
                                    ((_ to_fp 11 53) c_ack!2474))))))
  (FPCHECK_FSUB_ACCURACY
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
    c_ack!2474)))

(check-sat)
(exit)
