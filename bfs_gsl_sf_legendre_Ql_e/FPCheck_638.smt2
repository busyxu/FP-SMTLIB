(declare-fun b_ack!2070 () (_ BitVec 64))
(declare-fun a_ack!2071 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!2071 #x00000000)))
(assert (not (= #x00000000 a_ack!2071)))
(assert (not (= #x00000001 a_ack!2071)))
(assert (not (bvslt #x000186a0 a_ack!2071)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2070)
               ((_ to_fp 11 53) b_ack!2070))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2070) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2070)
               ((_ to_fp 11 53) b_ack!2070))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (bvslt #x00000001 a_ack!2071))
(assert (bvslt #x00000002 a_ack!2071))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) b_ack!2070))
                           ((_ to_fp 11 53) #x3fb745d1745d1746)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) b_ack!2070))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) b_ack!2070))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) b_ack!2070))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) b_ack!2070))
                           a!4))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) b_ack!2070))
                           a!5)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   a!5)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2070)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!6))))
  (FPCHECK_FDIV_OVERFLOW a!8 #x4008000000000000))))))))))

(check-sat)
(exit)
