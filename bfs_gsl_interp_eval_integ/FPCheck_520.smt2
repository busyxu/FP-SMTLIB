(declare-fun x1_ack!6525 () (_ BitVec 64))
(declare-fun x0_ack!6531 () (_ BitVec 64))
(declare-fun x2_ack!6526 () (_ BitVec 64))
(declare-fun b_ack!6530 () (_ BitVec 64))
(declare-fun a_ack!6529 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!6527 () (_ BitVec 64))
(declare-fun y2_ack!6528 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6531) ((_ to_fp 11 53) x1_ack!6525)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6525) ((_ to_fp 11 53) x2_ack!6526)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6525)
                       ((_ to_fp 11 53) x0_ack!6531))
               ((_ to_fp 11 53) x0_ack!6531))
       ((_ to_fp 11 53) x1_ack!6525)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6525)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6525)
                       ((_ to_fp 11 53) x0_ack!6531)))
       ((_ to_fp 11 53) x0_ack!6531)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6526)
                       ((_ to_fp 11 53) x1_ack!6525))
               ((_ to_fp 11 53) x1_ack!6525))
       ((_ to_fp 11 53) x2_ack!6526)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6526)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6526)
                       ((_ to_fp 11 53) x1_ack!6525)))
       ((_ to_fp 11 53) x1_ack!6525)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6525)
                    ((_ to_fp 11 53) x0_ack!6531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6526)
                    ((_ to_fp 11 53) x1_ack!6525))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6529) ((_ to_fp 11 53) b_ack!6530))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6529) ((_ to_fp 11 53) x0_ack!6531))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6530) ((_ to_fp 11 53) x2_ack!6526))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6529) ((_ to_fp 11 53) b_ack!6530))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6529) ((_ to_fp 11 53) x0_ack!6531))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6529) ((_ to_fp 11 53) x1_ack!6525))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6530) ((_ to_fp 11 53) x0_ack!6531))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6530) ((_ to_fp 11 53) x1_ack!6525)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6525) ((_ to_fp 11 53) b_ack!6530))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6525)
                    ((_ to_fp 11 53) x0_ack!6531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!6528 y1_ack!6527))

(check-sat)
(exit)
