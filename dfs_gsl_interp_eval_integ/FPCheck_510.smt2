(declare-fun x1_ack!6391 () (_ BitVec 64))
(declare-fun x0_ack!6395 () (_ BitVec 64))
(declare-fun x2_ack!6392 () (_ BitVec 64))
(declare-fun b_ack!6394 () (_ BitVec 64))
(declare-fun a_ack!6393 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6395) ((_ to_fp 11 53) x1_ack!6391)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6391) ((_ to_fp 11 53) x2_ack!6392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6391)
                       ((_ to_fp 11 53) x0_ack!6395))
               ((_ to_fp 11 53) x0_ack!6395))
       ((_ to_fp 11 53) x1_ack!6391)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6391)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6391)
                       ((_ to_fp 11 53) x0_ack!6395)))
       ((_ to_fp 11 53) x0_ack!6395)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6392)
                       ((_ to_fp 11 53) x1_ack!6391))
               ((_ to_fp 11 53) x1_ack!6391))
       ((_ to_fp 11 53) x2_ack!6392)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6392)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6392)
                       ((_ to_fp 11 53) x1_ack!6391)))
       ((_ to_fp 11 53) x1_ack!6391)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6391)
                    ((_ to_fp 11 53) x0_ack!6395))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6392)
                    ((_ to_fp 11 53) x1_ack!6391))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6393) ((_ to_fp 11 53) b_ack!6394))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6393) ((_ to_fp 11 53) x0_ack!6395))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6394) ((_ to_fp 11 53) x2_ack!6392))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6393) ((_ to_fp 11 53) b_ack!6394))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6393) ((_ to_fp 11 53) x0_ack!6395))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6393) ((_ to_fp 11 53) x1_ack!6391)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6391) ((_ to_fp 11 53) a_ack!6393))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6394) ((_ to_fp 11 53) x1_ack!6391))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6394) ((_ to_fp 11 53) x2_ack!6392))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6392)
                    ((_ to_fp 11 53) x1_ack!6391))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!6394 x1_ack!6391))

(check-sat)
(exit)
