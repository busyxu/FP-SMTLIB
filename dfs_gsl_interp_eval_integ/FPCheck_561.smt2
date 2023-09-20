(declare-fun x1_ack!7042 () (_ BitVec 64))
(declare-fun x0_ack!7046 () (_ BitVec 64))
(declare-fun x2_ack!7043 () (_ BitVec 64))
(declare-fun b_ack!7045 () (_ BitVec 64))
(declare-fun a_ack!7044 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7046) ((_ to_fp 11 53) x1_ack!7042)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7042) ((_ to_fp 11 53) x2_ack!7043)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7042)
                       ((_ to_fp 11 53) x0_ack!7046))
               ((_ to_fp 11 53) x0_ack!7046))
       ((_ to_fp 11 53) x1_ack!7042)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7042)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7042)
                       ((_ to_fp 11 53) x0_ack!7046)))
       ((_ to_fp 11 53) x0_ack!7046)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7043)
                       ((_ to_fp 11 53) x1_ack!7042))
               ((_ to_fp 11 53) x1_ack!7042))
       ((_ to_fp 11 53) x2_ack!7043)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7043)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7043)
                       ((_ to_fp 11 53) x1_ack!7042)))
       ((_ to_fp 11 53) x1_ack!7042)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7042)
                    ((_ to_fp 11 53) x0_ack!7046))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7043)
                    ((_ to_fp 11 53) x1_ack!7042))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7044) ((_ to_fp 11 53) b_ack!7045))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7044) ((_ to_fp 11 53) x0_ack!7046))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7045) ((_ to_fp 11 53) x2_ack!7043))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7044) ((_ to_fp 11 53) b_ack!7045))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7044) ((_ to_fp 11 53) x0_ack!7046))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7044) ((_ to_fp 11 53) x1_ack!7042)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7042) ((_ to_fp 11 53) a_ack!7044))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7045) ((_ to_fp 11 53) x1_ack!7042))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7045) ((_ to_fp 11 53) x2_ack!7043))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7043)
                    ((_ to_fp 11 53) x1_ack!7042))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!7045 a_ack!7044))

(check-sat)
(exit)
