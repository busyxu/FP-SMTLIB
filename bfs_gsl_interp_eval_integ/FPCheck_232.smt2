(declare-fun x1_ack!2773 () (_ BitVec 64))
(declare-fun x0_ack!2777 () (_ BitVec 64))
(declare-fun x2_ack!2774 () (_ BitVec 64))
(declare-fun b_ack!2776 () (_ BitVec 64))
(declare-fun a_ack!2775 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2777) ((_ to_fp 11 53) x1_ack!2773)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2773) ((_ to_fp 11 53) x2_ack!2774)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2773)
                       ((_ to_fp 11 53) x0_ack!2777))
               ((_ to_fp 11 53) x0_ack!2777))
       ((_ to_fp 11 53) x1_ack!2773)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2773)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2773)
                       ((_ to_fp 11 53) x0_ack!2777)))
       ((_ to_fp 11 53) x0_ack!2777)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2774)
                       ((_ to_fp 11 53) x1_ack!2773))
               ((_ to_fp 11 53) x1_ack!2773))
       ((_ to_fp 11 53) x2_ack!2774)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2774)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2774)
                       ((_ to_fp 11 53) x1_ack!2773)))
       ((_ to_fp 11 53) x1_ack!2773)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2773)
                    ((_ to_fp 11 53) x0_ack!2777))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2774)
                    ((_ to_fp 11 53) x1_ack!2773))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2775) ((_ to_fp 11 53) b_ack!2776))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2775) ((_ to_fp 11 53) x0_ack!2777))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2776) ((_ to_fp 11 53) x2_ack!2774))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2775) ((_ to_fp 11 53) b_ack!2776))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2775) ((_ to_fp 11 53) x0_ack!2777))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2775) ((_ to_fp 11 53) x1_ack!2773)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2773) ((_ to_fp 11 53) a_ack!2775))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2776) ((_ to_fp 11 53) x1_ack!2773))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2776) ((_ to_fp 11 53) x2_ack!2774))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2774)
                    ((_ to_fp 11 53) x1_ack!2773))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2775)
                  ((_ to_fp 11 53) x1_ack!2773))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2775)
                  ((_ to_fp 11 53) x1_ack!2773)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2776)
                  ((_ to_fp 11 53) x1_ack!2773))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2776)
                  ((_ to_fp 11 53) x1_ack!2773)))))

(check-sat)
(exit)
