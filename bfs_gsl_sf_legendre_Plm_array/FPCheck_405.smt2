(declare-fun b_ack!2172 () (_ BitVec 32))
(declare-fun a_ack!2174 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!2173 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub a_ack!2174 b_ack!2172))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!2174 b_ack!2172))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub a_ack!2174 b_ack!2172))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2174))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2174 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2174 b_ack!2172)))
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
                                     a_ack!2174))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2174 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2174 b_ack!2172)))
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
(assert (not (bvslt b_ack!2172 #x00000000)))
(assert (not (bvslt a_ack!2174 b_ack!2172)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2173) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2173) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!2172)))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2174))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2174 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!2174 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2174 b_ack!2172)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!2174 b_ack!2172)))
                   a!4)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           a!3)
                   a!5)))
  (not (fp.lt a!6 ((_ to_fp 11 53) #xc085d32bdd7abcd2)))))))
(assert (= #x00000000 b_ack!2172))
(assert (not (= a_ack!2174 b_ack!2172)))
(assert (not (= a_ack!2174 (bvadd #x00000001 b_ack!2172))))
(assert (bvsle (bvadd #x00000002 b_ack!2172) a_ack!2174))
(assert (bvsle (bvadd #x00000003 b_ack!2172) a_ack!2174))
(assert (bvsle (bvadd #x00000004 b_ack!2172) a_ack!2174))
(assert (bvsle (bvadd #x00000005 b_ack!2172) a_ack!2174))
(assert (bvsle (bvadd #x00000006 b_ack!2172) a_ack!2174))
(assert (bvsle (bvadd #x00000007 b_ack!2172) a_ack!2174))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000007 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000006 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000005 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2173)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2172))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2172 b_ack!2172)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2173)
                                   a!6)
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000002 (bvadd b_ack!2172 b_ack!2172)))
                    (fp.mul roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2173)
                                    a!5)
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!10))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000003 (bvadd b_ack!2172 b_ack!2172)))
                    (fp.div roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2173)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4008000000000000)))
                    a!12))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000004 (bvadd b_ack!2172 b_ack!2172)))
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2173)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    a!14))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000005 (bvadd b_ack!2172 b_ack!2172)))
                    (fp.div roundNearestTiesToEven
                            a!13
                            ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2173)
                                    a!2)
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    a!16))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000006 (bvadd b_ack!2172 b_ack!2172)))
                    (fp.div roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4014000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!2173) a!1)
            (fp.div roundNearestTiesToEven
                    a!17
                    ((_ to_fp 11 53) #x4018000000000000)))
    a!18))))))))

(check-sat)
(exit)
