(declare-fun c_ack!2324 () (_ BitVec 64))
(declare-fun b_ack!2323 () (_ BitVec 32))
(declare-fun a_ack!2325 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!2325 b_ack!2323)))
(assert (not (= #x00000000 b_ack!2323)))
(assert (not (= #x00000000 a_ack!2325)))
(assert (not (bvslt b_ack!2323 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2324) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2324) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!2325 #x00000000)))
(assert (not (bvslt a_ack!2325 #x00000000)))
(assert (not (= a_ack!2325 b_ack!2323)))
(assert (not (= #x00000001 a_ack!2325)))
(assert (not (= b_ack!2323 (bvadd #x00000001 a_ack!2325))))
(assert (not (= a_ack!2325 (bvadd #x00000001 b_ack!2323))))
(assert (not (= a_ack!2325 (bvadd #x00000002 b_ack!2323))))
(assert (not (= b_ack!2323 (bvmul #x00000002 a_ack!2325))))
(assert (bvslt b_ack!2323 #x0000000a))
(assert (bvslt a_ack!2325 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2324))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2323)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2325)
                          (fp.abs ((_ to_fp 11 53) c_ack!2324))))))
  (not a!1)))
(assert (not (bvslt a_ack!2325 b_ack!2323)))
(assert (not (bvslt a_ack!2325 b_ack!2323)))
(assert (not (bvslt a_ack!2325 b_ack!2323)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2325)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2323)
                                   ((_ to_fp 11 53) c_ack!2324))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2325)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!2324)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
  (bvslt b_ack!2323 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
(let ((a!2 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324))))
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
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324))))
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
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2324)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2324))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2324)
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
                           (CF_exp c_ack!2324)
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
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2324)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2324))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2324)
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
                           (CF_exp c_ack!2324)
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
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
  (not (bvslt b_ack!2323
              (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2323)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!2324))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2324)
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
                    ((_ to_fp 11 53) c_ack!2324)
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!2323)))))
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
                            (CF_exp c_ack!2324)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2324)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2324)
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           (CF_exp c_ack!2324)))))
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
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2323)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!2324))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2324)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2324)
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
                    ((_ to_fp 11 53) c_ack!2324)
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!2323)))))
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
                            (CF_exp c_ack!2324)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2324)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2324)
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           (CF_exp c_ack!2324)))))
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
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
  (not (bvsle a_ack!2325 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2323)
                                    ((_ to_fp 11 53) c_ack!2324))))))
  (bvsle a_ack!2325 (bvadd #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.abs ((_ to_fp 11 53) roundNearestTiesToEven (bvsub b_ack!2323 a_ack!2325)))
  #x3ff0000000000000))

(check-sat)
(exit)
