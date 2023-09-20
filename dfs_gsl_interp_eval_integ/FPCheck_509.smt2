(declare-fun x1_ack!6381 () (_ BitVec 64))
(declare-fun x0_ack!6385 () (_ BitVec 64))
(declare-fun x2_ack!6382 () (_ BitVec 64))
(declare-fun b_ack!6384 () (_ BitVec 64))
(declare-fun a_ack!6383 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6385) ((_ to_fp 11 53) x1_ack!6381)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6381) ((_ to_fp 11 53) x2_ack!6382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6381)
                       ((_ to_fp 11 53) x0_ack!6385))
               ((_ to_fp 11 53) x0_ack!6385))
       ((_ to_fp 11 53) x1_ack!6381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6381)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6381)
                       ((_ to_fp 11 53) x0_ack!6385)))
       ((_ to_fp 11 53) x0_ack!6385)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6382)
                       ((_ to_fp 11 53) x1_ack!6381))
               ((_ to_fp 11 53) x1_ack!6381))
       ((_ to_fp 11 53) x2_ack!6382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6382)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6382)
                       ((_ to_fp 11 53) x1_ack!6381)))
       ((_ to_fp 11 53) x1_ack!6381)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6381)
                    ((_ to_fp 11 53) x0_ack!6385))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6382)
                    ((_ to_fp 11 53) x1_ack!6381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6383) ((_ to_fp 11 53) b_ack!6384))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6383) ((_ to_fp 11 53) x0_ack!6385))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6384) ((_ to_fp 11 53) x2_ack!6382))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6383) ((_ to_fp 11 53) b_ack!6384))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6383) ((_ to_fp 11 53) x0_ack!6385))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6383) ((_ to_fp 11 53) x1_ack!6381)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6381) ((_ to_fp 11 53) a_ack!6383))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6384) ((_ to_fp 11 53) x1_ack!6381))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6384) ((_ to_fp 11 53) x2_ack!6382))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6382)
                    ((_ to_fp 11 53) x1_ack!6381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!6384 x1_ack!6381))

(check-sat)
(exit)
