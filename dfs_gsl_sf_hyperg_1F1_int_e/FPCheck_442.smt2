(declare-fun c_ack!2333 () (_ BitVec 64))
(declare-fun b_ack!2332 () (_ BitVec 32))
(declare-fun a_ack!2334 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2333) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!2334 b_ack!2332)))
(assert (not (= #x00000000 b_ack!2332)))
(assert (not (= #x00000000 a_ack!2334)))
(assert (not (bvslt b_ack!2332 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2333) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2333) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!2334 #x00000000)))
(assert (not (bvslt a_ack!2334 #x00000000)))
(assert (not (= a_ack!2334 b_ack!2332)))
(assert (not (= #x00000001 a_ack!2334)))
(assert (not (= b_ack!2332 (bvadd #x00000001 a_ack!2334))))
(assert (not (= a_ack!2334 (bvadd #x00000001 b_ack!2332))))
(assert (not (= a_ack!2334 (bvadd #x00000002 b_ack!2332))))
(assert (not (= b_ack!2332 (bvmul #x00000002 a_ack!2334))))
(assert (bvslt b_ack!2332 #x0000000a))
(assert (bvslt a_ack!2334 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2333))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2332)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2334)
                          (fp.abs ((_ to_fp 11 53) c_ack!2333))))))
  (not a!1)))
(assert (not (bvslt a_ack!2334 b_ack!2332)))
(assert (not (bvslt a_ack!2334 b_ack!2332)))
(assert (not (bvslt a_ack!2334 b_ack!2332)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2333) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2334)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2332)
                                   ((_ to_fp 11 53) c_ack!2333))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2334)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!2333)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
  (bvslt b_ack!2332 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
(let ((a!2 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333))))
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
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333))))
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
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2333)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2333))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2333)
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
                           (CF_exp c_ack!2333)
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
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2333)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2333))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2333)
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
                           (CF_exp c_ack!2333)
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
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
  (not (bvslt b_ack!2332
              (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2332)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!2333))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2333)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2333)
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!2332)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!3))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2333)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2333)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2333)
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           (CF_exp c_ack!2333)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    (fp.div roundNearestTiesToEven a!7 a!9))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.div roundNearestTiesToEven a!7 a!9)))))
  (fp.eq a!12 a!11))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2332)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!2333))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2333)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2333)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2333)
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!2332)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!3))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2333)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2333)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2333)
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           (CF_exp c_ack!2333)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    (fp.div roundNearestTiesToEven a!7 a!9))
                            a!11)
                    a!11)))
  (fp.eq a!12
         (fp.mul roundNearestTiesToEven
                 a!2
                 (fp.div roundNearestTiesToEven a!7 a!9))))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
  (not (bvsle a_ack!2334 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333))))))
  (bvsle a_ack!2334 (bvadd #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2333))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!2 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2332)
                                    ((_ to_fp 11 53) c_ack!2333)))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.abs ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub b_ack!2332 a_ack!2334)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2332)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!2))
                           ((_ to_fp 11 53) c_ack!2333))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!2)))
                   ((_ to_fp 11 53) c_ack!2333)))
      (a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2333)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!2))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!2)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2333)
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub ((_ fp.to_sbv 32) roundTowardZero a!2) b_ack!2332)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!2)))
                   a!4))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!2)))
                    a!9))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2333)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2333)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2333)
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           (CF_exp c_ack!2333)))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!8 a!10))
                            a!12)
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvmul ((_ fp.to_sbv 32) roundTowardZero a!2) b_ack!2332)))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 (fp.abs a!13)) a!14))))))))

(check-sat)
(exit)
