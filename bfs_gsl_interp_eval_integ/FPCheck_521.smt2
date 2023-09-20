(declare-fun x1_ack!6539 () (_ BitVec 64))
(declare-fun x0_ack!6545 () (_ BitVec 64))
(declare-fun x2_ack!6540 () (_ BitVec 64))
(declare-fun b_ack!6544 () (_ BitVec 64))
(declare-fun a_ack!6543 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!6541 () (_ BitVec 64))
(declare-fun y2_ack!6542 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6545) ((_ to_fp 11 53) x1_ack!6539)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6539) ((_ to_fp 11 53) x2_ack!6540)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6539)
                       ((_ to_fp 11 53) x0_ack!6545))
               ((_ to_fp 11 53) x0_ack!6545))
       ((_ to_fp 11 53) x1_ack!6539)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6539)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6539)
                       ((_ to_fp 11 53) x0_ack!6545)))
       ((_ to_fp 11 53) x0_ack!6545)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6540)
                       ((_ to_fp 11 53) x1_ack!6539))
               ((_ to_fp 11 53) x1_ack!6539))
       ((_ to_fp 11 53) x2_ack!6540)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6540)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6540)
                       ((_ to_fp 11 53) x1_ack!6539)))
       ((_ to_fp 11 53) x1_ack!6539)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6539)
                    ((_ to_fp 11 53) x0_ack!6545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6540)
                    ((_ to_fp 11 53) x1_ack!6539))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6543) ((_ to_fp 11 53) b_ack!6544))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6543) ((_ to_fp 11 53) x0_ack!6545))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6544) ((_ to_fp 11 53) x2_ack!6540))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6543) ((_ to_fp 11 53) b_ack!6544))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6543) ((_ to_fp 11 53) x0_ack!6545))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6543) ((_ to_fp 11 53) x1_ack!6539))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6544) ((_ to_fp 11 53) x0_ack!6545))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6544) ((_ to_fp 11 53) x1_ack!6539)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6539) ((_ to_fp 11 53) b_ack!6544))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6539)
                    ((_ to_fp 11 53) x0_ack!6545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!6542 y1_ack!6541))

(check-sat)
(exit)
