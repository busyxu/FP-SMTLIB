(declare-fun b_ack!756 () (_ BitVec 32))
(declare-fun a_ack!758 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!757 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!758 b_ack!756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!758 b_ack!756))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!758 b_ack!756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!758))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!758 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!758 b_ack!756)))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!1))))
  (fp.eq a!4 a!3)))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!758))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!758 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!758 b_ack!756)))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           a!3)
                   a!3)))
  (fp.eq a!4
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 a!1))))))
(assert (not (bvslt b_ack!756 #x00000000)))
(assert (not (bvslt a_ack!758 b_ack!756)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!757) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!757) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!756))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!757) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!757) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!758))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!758 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!758 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!758 b_ack!756)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!758 b_ack!756)))
                   a!4)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           a!3)
                   a!5)))
  (not (fp.lt a!6 ((_ to_fp 11 53) #xc085d32bdd7abcd2)))))))
(assert (not (= #x00000000 b_ack!756)))
(assert (bvsle #x00000001 b_ack!756))
(assert (not (bvsle #x00000002 b_ack!756)))
(assert (not (= a_ack!758 b_ack!756)))
(assert (not (= a_ack!758 (bvadd #x00000001 b_ack!756))))
(assert (bvsle (bvadd #x00000002 b_ack!756) a_ack!758))
(assert (bvsle (bvadd #x00000003 b_ack!756) a_ack!758))
(assert (bvsle (bvadd #x00000004 b_ack!756) a_ack!758))
(assert (bvsle (bvadd #x00000005 b_ack!756) a_ack!758))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000005 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!756)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!757)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!756))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!756 b_ack!756)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!757)
                                   a!4)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #xbff0000000000000)))
                   a!6))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 (bvadd b_ack!756 b_ack!756)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #xbff0000000000000)))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!757)
                                   a!3)
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   a!8))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000003 (bvadd b_ack!756 b_ack!756)))
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!757)
                                    a!2)
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4008000000000000)))
                    a!10))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000004 (bvadd b_ack!756 b_ack!756)))
                    (fp.div roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!757)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    a!12)))
  (FPCHECK_FDIV_ACCURACY a!13 #x4014000000000000)))))))

(check-sat)
(exit)
