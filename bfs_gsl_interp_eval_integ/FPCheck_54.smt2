(declare-fun x1_ack!524 () (_ BitVec 64))
(declare-fun x0_ack!528 () (_ BitVec 64))
(declare-fun x2_ack!525 () (_ BitVec 64))
(declare-fun b_ack!527 () (_ BitVec 64))
(declare-fun a_ack!526 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!528) ((_ to_fp 11 53) x1_ack!524)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!524) ((_ to_fp 11 53) x2_ack!525)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!524)
                       ((_ to_fp 11 53) x0_ack!528))
               ((_ to_fp 11 53) x0_ack!528))
       ((_ to_fp 11 53) x1_ack!524)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!524)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!524)
                       ((_ to_fp 11 53) x0_ack!528)))
       ((_ to_fp 11 53) x0_ack!528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!525)
                       ((_ to_fp 11 53) x1_ack!524))
               ((_ to_fp 11 53) x1_ack!524))
       ((_ to_fp 11 53) x2_ack!525)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!525)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!525)
                       ((_ to_fp 11 53) x1_ack!524)))
       ((_ to_fp 11 53) x1_ack!524)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!524)
                    ((_ to_fp 11 53) x0_ack!528))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!525)
                    ((_ to_fp 11 53) x1_ack!524))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!526) ((_ to_fp 11 53) b_ack!527))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!526) ((_ to_fp 11 53) x0_ack!528))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!527) ((_ to_fp 11 53) x2_ack!525))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!526) ((_ to_fp 11 53) b_ack!527))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!526) ((_ to_fp 11 53) x0_ack!528))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!526) ((_ to_fp 11 53) x1_ack!524)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!524) ((_ to_fp 11 53) a_ack!526))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!527) ((_ to_fp 11 53) x1_ack!524))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!527) ((_ to_fp 11 53) x2_ack!525))))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!525 x1_ack!524))

(check-sat)
(exit)
