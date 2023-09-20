(declare-fun b_ack!2706 () (_ BitVec 64))
(declare-fun a_ack!2707 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!2707 #x00000000)))
(assert (not (= #x00000000 a_ack!2707)))
(assert (= #x00000001 a_ack!2707))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2706)
               ((_ to_fp 11 53) b_ack!2706))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2706)
                                   ((_ to_fp 11 53) b_ack!2706))
                           ((_ to_fp 11 53) #x3fb745d1745d1746)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2706)
                                   ((_ to_fp 11 53) b_ack!2706))
                           a!1))))
  (FPCHECK_FADD_OVERFLOW
    #x3fc999999999999a
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2706)
                    ((_ to_fp 11 53) b_ack!2706))
            a!2)))))

(check-sat)
(exit)
