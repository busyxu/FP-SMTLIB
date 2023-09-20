(declare-fun x1_ack!6351 () (_ BitVec 64))
(declare-fun x0_ack!6355 () (_ BitVec 64))
(declare-fun x2_ack!6352 () (_ BitVec 64))
(declare-fun b_ack!6354 () (_ BitVec 64))
(declare-fun a_ack!6353 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6355) ((_ to_fp 11 53) x1_ack!6351)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6351) ((_ to_fp 11 53) x2_ack!6352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6351)
                       ((_ to_fp 11 53) x0_ack!6355))
               ((_ to_fp 11 53) x0_ack!6355))
       ((_ to_fp 11 53) x1_ack!6351)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6351)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6351)
                       ((_ to_fp 11 53) x0_ack!6355)))
       ((_ to_fp 11 53) x0_ack!6355)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6352)
                       ((_ to_fp 11 53) x1_ack!6351))
               ((_ to_fp 11 53) x1_ack!6351))
       ((_ to_fp 11 53) x2_ack!6352)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6352)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6352)
                       ((_ to_fp 11 53) x1_ack!6351)))
       ((_ to_fp 11 53) x1_ack!6351)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6351)
                    ((_ to_fp 11 53) x0_ack!6355))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6352)
                    ((_ to_fp 11 53) x1_ack!6351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6353) ((_ to_fp 11 53) b_ack!6354))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6353) ((_ to_fp 11 53) x0_ack!6355))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6354) ((_ to_fp 11 53) x2_ack!6352))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6353) ((_ to_fp 11 53) b_ack!6354))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6353) ((_ to_fp 11 53) x0_ack!6355))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6353) ((_ to_fp 11 53) x1_ack!6351)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6351) ((_ to_fp 11 53) a_ack!6353))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6354) ((_ to_fp 11 53) x1_ack!6351))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6354) ((_ to_fp 11 53) x2_ack!6352))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6352)
                    ((_ to_fp 11 53) x1_ack!6351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!6353 x1_ack!6351))

(check-sat)
(exit)
