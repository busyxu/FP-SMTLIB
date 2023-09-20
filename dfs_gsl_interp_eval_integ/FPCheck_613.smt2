(declare-fun x1_ack!7769 () (_ BitVec 64))
(declare-fun x0_ack!7773 () (_ BitVec 64))
(declare-fun x2_ack!7770 () (_ BitVec 64))
(declare-fun b_ack!7772 () (_ BitVec 64))
(declare-fun a_ack!7771 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7773) ((_ to_fp 11 53) x1_ack!7769)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7769) ((_ to_fp 11 53) x2_ack!7770)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7769)
                       ((_ to_fp 11 53) x0_ack!7773))
               ((_ to_fp 11 53) x0_ack!7773))
       ((_ to_fp 11 53) x1_ack!7769)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7769)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7769)
                       ((_ to_fp 11 53) x0_ack!7773)))
       ((_ to_fp 11 53) x0_ack!7773)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7770)
                       ((_ to_fp 11 53) x1_ack!7769))
               ((_ to_fp 11 53) x1_ack!7769))
       ((_ to_fp 11 53) x2_ack!7770)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7770)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7770)
                       ((_ to_fp 11 53) x1_ack!7769)))
       ((_ to_fp 11 53) x1_ack!7769)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7769)
                    ((_ to_fp 11 53) x0_ack!7773))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7770)
                    ((_ to_fp 11 53) x1_ack!7769))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7771) ((_ to_fp 11 53) b_ack!7772))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7771) ((_ to_fp 11 53) x0_ack!7773))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7772) ((_ to_fp 11 53) x2_ack!7770))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7771) ((_ to_fp 11 53) b_ack!7772))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7771) ((_ to_fp 11 53) x0_ack!7773))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7771) ((_ to_fp 11 53) x1_ack!7769))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7772) ((_ to_fp 11 53) x0_ack!7773)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7769)
                    ((_ to_fp 11 53) x0_ack!7773))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!7772 x0_ack!7773))

(check-sat)
(exit)
