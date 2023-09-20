(declare-fun a_ack!181 () (_ BitVec 32))
(declare-fun b_ack!180 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!181 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!181)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!180)
                                  ((_ to_fp 11 53) b_ack!180)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) b_ack!180))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!180)
                           ((_ to_fp 11 53) b_ack!180)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe58a86a49f629d1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) b_ack!180))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!180)
                 ((_ to_fp 11 53) b_ack!180)))))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ec4ce19ae67b348
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!180)
                  ((_ to_fp 11 53) b_ack!180))
          ((_ to_fp 11 53) #xbe58a86a49f629d1))))

(check-sat)
(exit)
