(declare-fun e_ack!1964 () (_ BitVec 32))
(declare-fun a_ack!1965 () (_ BitVec 64))
(declare-fun b_ack!1961 () (_ BitVec 64))
(declare-fun c_ack!1962 () (_ BitVec 64))
(declare-fun d_ack!1963 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1964 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1965) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1961) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1962) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1965)
                    ((_ to_fp 11 53) b_ack!1961))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1965)
                    ((_ to_fp 11 53) c_ack!1962))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1961)
                    ((_ to_fp 11 53) c_ack!1962))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1963) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1965) ((_ to_fp 11 53) b_ack!1961)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1965) ((_ to_fp 11 53) c_ack!1962)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1965) ((_ to_fp 11 53) d_ack!1963)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1965) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1965)
                       ((_ to_fp 11 53) b_ack!1961))
               ((_ to_fp 11 53) a_ack!1965))
       ((_ to_fp 11 53) b_ack!1961)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1965)
                       ((_ to_fp 11 53) b_ack!1961))
               ((_ to_fp 11 53) b_ack!1961))
       ((_ to_fp 11 53) a_ack!1965)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1963))
                 a!1)
         ((_ to_fp 11 53) d_ack!1963))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1963))
                 ((_ to_fp 11 53) d_ack!1963))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) d_ack!1963)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) d_ack!1963)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fc999999999999a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) #x3fc999999999999a))))
  (fp.eq a!2 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1963))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!1965)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) b_ack!1961))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (fp.gt (fp.abs a!3) (fp.abs a!5))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!1965)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) c_ack!1962))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (fp.gt (fp.abs a!3) (fp.abs a!5))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!1965)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (fp.gt (fp.abs a!3) (fp.abs a!5))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963)))
      (a!4 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand e_ack!1964 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!1965))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (fp.lt (fp.abs a!3) a!4)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1965)
                                   ((_ to_fp 11 53) b_ack!1961))
                           ((_ to_fp 11 53) c_ack!1962))
                   ((_ to_fp 11 53) d_ack!1963))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) b_ack!1961)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) c_ack!1962))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1963))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (FPCHECK_FADD_ACCURACY a!3 a!5)))))

(check-sat)
(exit)
