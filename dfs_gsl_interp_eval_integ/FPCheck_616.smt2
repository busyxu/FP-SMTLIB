(declare-fun x1_ack!7799 () (_ BitVec 64))
(declare-fun x0_ack!7803 () (_ BitVec 64))
(declare-fun x2_ack!7800 () (_ BitVec 64))
(declare-fun b_ack!7802 () (_ BitVec 64))
(declare-fun a_ack!7801 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7803) ((_ to_fp 11 53) x1_ack!7799)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7799) ((_ to_fp 11 53) x2_ack!7800)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7799)
                       ((_ to_fp 11 53) x0_ack!7803))
               ((_ to_fp 11 53) x0_ack!7803))
       ((_ to_fp 11 53) x1_ack!7799)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7799)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7799)
                       ((_ to_fp 11 53) x0_ack!7803)))
       ((_ to_fp 11 53) x0_ack!7803)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7800)
                       ((_ to_fp 11 53) x1_ack!7799))
               ((_ to_fp 11 53) x1_ack!7799))
       ((_ to_fp 11 53) x2_ack!7800)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7800)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7800)
                       ((_ to_fp 11 53) x1_ack!7799)))
       ((_ to_fp 11 53) x1_ack!7799)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7799)
                    ((_ to_fp 11 53) x0_ack!7803))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7800)
                    ((_ to_fp 11 53) x1_ack!7799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7801) ((_ to_fp 11 53) b_ack!7802))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7801) ((_ to_fp 11 53) x0_ack!7803))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7802) ((_ to_fp 11 53) x2_ack!7800))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7801) ((_ to_fp 11 53) b_ack!7802))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7801) ((_ to_fp 11 53) x0_ack!7803))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7801) ((_ to_fp 11 53) x1_ack!7799))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7802) ((_ to_fp 11 53) x0_ack!7803)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7799)
                    ((_ to_fp 11 53) x0_ack!7803))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7801)
          ((_ to_fp 11 53) x0_ack!7803))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7802)
          ((_ to_fp 11 53) x0_ack!7803))))

(check-sat)
(exit)
