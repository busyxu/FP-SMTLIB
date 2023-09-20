(declare-fun x1_ack!942 () (_ BitVec 64))
(declare-fun x0_ack!946 () (_ BitVec 64))
(declare-fun x2_ack!943 () (_ BitVec 64))
(declare-fun b_ack!945 () (_ BitVec 64))
(declare-fun a_ack!944 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!946) ((_ to_fp 11 53) x1_ack!942)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!942) ((_ to_fp 11 53) x2_ack!943)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!942)
                       ((_ to_fp 11 53) x0_ack!946))
               ((_ to_fp 11 53) x0_ack!946))
       ((_ to_fp 11 53) x1_ack!942)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!942)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!942)
                       ((_ to_fp 11 53) x0_ack!946)))
       ((_ to_fp 11 53) x0_ack!946)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!943)
                       ((_ to_fp 11 53) x1_ack!942))
               ((_ to_fp 11 53) x1_ack!942))
       ((_ to_fp 11 53) x2_ack!943)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!943)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!943)
                       ((_ to_fp 11 53) x1_ack!942)))
       ((_ to_fp 11 53) x1_ack!942)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!942)
                    ((_ to_fp 11 53) x0_ack!946))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!943)
                    ((_ to_fp 11 53) x1_ack!942))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!944) ((_ to_fp 11 53) b_ack!945))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!944) ((_ to_fp 11 53) x0_ack!946))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!945) ((_ to_fp 11 53) x2_ack!943))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!944) ((_ to_fp 11 53) b_ack!945))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!944) ((_ to_fp 11 53) x0_ack!946))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!944) ((_ to_fp 11 53) x1_ack!942))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!945) ((_ to_fp 11 53) x0_ack!946)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!942)
                    ((_ to_fp 11 53) x0_ack!946))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!945 x0_ack!946))

(check-sat)
(exit)
