(declare-fun b_ack!2244 () (_ BitVec 32))
(declare-fun a_ack!2246 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!2245 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub a_ack!2246 b_ack!2244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!2246 b_ack!2244))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub a_ack!2246 b_ack!2244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2246))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2246 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2246 b_ack!2244)))
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
                                     a_ack!2246))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2246 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2246 b_ack!2244)))
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
(assert (not (bvslt b_ack!2244 #x00000000)))
(assert (not (bvslt a_ack!2246 b_ack!2244)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2245) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2245) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!2244)))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2246))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2246 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!2246 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!2246 b_ack!2244)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!2246 b_ack!2244)))
                   a!4)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           a!3)
                   a!5)))
  (not (fp.lt a!6 ((_ to_fp 11 53) #xc085d32bdd7abcd2)))))))
(assert (= #x00000000 b_ack!2244))
(assert (not (= a_ack!2246 b_ack!2244)))
(assert (not (= a_ack!2246 (bvadd #x00000001 b_ack!2244))))
(assert (bvsle (bvadd #x00000002 b_ack!2244) a_ack!2246))
(assert (bvsle (bvadd #x00000003 b_ack!2244) a_ack!2246))
(assert (bvsle (bvadd #x00000004 b_ack!2244) a_ack!2246))
(assert (bvsle (bvadd #x00000005 b_ack!2244) a_ack!2246))
(assert (bvsle (bvadd #x00000006 b_ack!2244) a_ack!2246))
(assert (bvsle (bvadd #x00000007 b_ack!2244) a_ack!2246))
(assert (bvsle (bvadd #x00000008 b_ack!2244) a_ack!2246))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000008 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000007 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000006 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000005 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2245)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2244))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2244 b_ack!2244)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2245)
                                    a!7)
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000002 (bvadd b_ack!2244 b_ack!2244)))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2245)
                                    a!6)
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!11))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000003 (bvadd b_ack!2244 b_ack!2244)))
                    (fp.div roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2245)
                                    a!5)
                            (fp.div roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x4008000000000000)))
                    a!13))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000004 (bvadd b_ack!2244 b_ack!2244)))
                    (fp.div roundNearestTiesToEven
                            a!12
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2245)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    a!15))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000005 (bvadd b_ack!2244 b_ack!2244)))
                    (fp.div roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2245)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    a!17))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000006 (bvadd b_ack!2244 b_ack!2244)))
                    (fp.div roundNearestTiesToEven
                            a!16
                            ((_ to_fp 11 53) #x4014000000000000)))))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2245)
                                    a!2)
                            (fp.div roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    a!19)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!2245) a!1)
    (fp.div roundNearestTiesToEven a!20 ((_ to_fp 11 53) #x401c000000000000)))))))))))

(check-sat)
(exit)
