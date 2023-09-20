(declare-fun x1_ack!61 () (_ BitVec 64))
(declare-fun x0_ack!65 () (_ BitVec 64))
(declare-fun x2_ack!62 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!63 () (_ BitVec 64))
(declare-fun y1_ack!64 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!65) ((_ to_fp 11 53) x1_ack!61)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!61) ((_ to_fp 11 53) x2_ack!62)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!61)
                       ((_ to_fp 11 53) x0_ack!65))
               ((_ to_fp 11 53) x0_ack!65))
       ((_ to_fp 11 53) x1_ack!61)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!61)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!61)
                       ((_ to_fp 11 53) x0_ack!65)))
       ((_ to_fp 11 53) x0_ack!65)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!62)
                       ((_ to_fp 11 53) x1_ack!61))
               ((_ to_fp 11 53) x1_ack!61))
       ((_ to_fp 11 53) x2_ack!62)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!62)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!62)
                       ((_ to_fp 11 53) x1_ack!61)))
       ((_ to_fp 11 53) x1_ack!61)))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!64 y0_ack!63))

(check-sat)
(exit)
