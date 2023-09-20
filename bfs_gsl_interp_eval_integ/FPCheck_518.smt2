(declare-fun x1_ack!6501 () (_ BitVec 64))
(declare-fun x0_ack!6505 () (_ BitVec 64))
(declare-fun x2_ack!6502 () (_ BitVec 64))
(declare-fun b_ack!6504 () (_ BitVec 64))
(declare-fun a_ack!6503 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6505) ((_ to_fp 11 53) x1_ack!6501)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6501) ((_ to_fp 11 53) x2_ack!6502)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6501)
                       ((_ to_fp 11 53) x0_ack!6505))
               ((_ to_fp 11 53) x0_ack!6505))
       ((_ to_fp 11 53) x1_ack!6501)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6501)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6501)
                       ((_ to_fp 11 53) x0_ack!6505)))
       ((_ to_fp 11 53) x0_ack!6505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6502)
                       ((_ to_fp 11 53) x1_ack!6501))
               ((_ to_fp 11 53) x1_ack!6501))
       ((_ to_fp 11 53) x2_ack!6502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6502)
                       ((_ to_fp 11 53) x1_ack!6501)))
       ((_ to_fp 11 53) x1_ack!6501)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6501)
                    ((_ to_fp 11 53) x0_ack!6505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6502)
                    ((_ to_fp 11 53) x1_ack!6501))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6503) ((_ to_fp 11 53) b_ack!6504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6503) ((_ to_fp 11 53) x0_ack!6505))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6504) ((_ to_fp 11 53) x2_ack!6502))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6503) ((_ to_fp 11 53) b_ack!6504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6503) ((_ to_fp 11 53) x0_ack!6505))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6503) ((_ to_fp 11 53) x1_ack!6501))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6504) ((_ to_fp 11 53) x0_ack!6505))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6504) ((_ to_fp 11 53) x1_ack!6501)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6501) ((_ to_fp 11 53) b_ack!6504))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6501)
                    ((_ to_fp 11 53) x0_ack!6505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY x2_ack!6502 x1_ack!6501))

(check-sat)
(exit)
