(declare-fun x1_ack!6200 () (_ BitVec 64))
(declare-fun x0_ack!6204 () (_ BitVec 64))
(declare-fun x2_ack!6201 () (_ BitVec 64))
(declare-fun b_ack!6203 () (_ BitVec 64))
(declare-fun a_ack!6202 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6204) ((_ to_fp 11 53) x1_ack!6200)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6200) ((_ to_fp 11 53) x2_ack!6201)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6200)
                       ((_ to_fp 11 53) x0_ack!6204))
               ((_ to_fp 11 53) x0_ack!6204))
       ((_ to_fp 11 53) x1_ack!6200)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6200)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6200)
                       ((_ to_fp 11 53) x0_ack!6204)))
       ((_ to_fp 11 53) x0_ack!6204)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6201)
                       ((_ to_fp 11 53) x1_ack!6200))
               ((_ to_fp 11 53) x1_ack!6200))
       ((_ to_fp 11 53) x2_ack!6201)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6201)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6201)
                       ((_ to_fp 11 53) x1_ack!6200)))
       ((_ to_fp 11 53) x1_ack!6200)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6200)
                    ((_ to_fp 11 53) x0_ack!6204))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6201)
                    ((_ to_fp 11 53) x1_ack!6200))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6202) ((_ to_fp 11 53) b_ack!6203))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6202) ((_ to_fp 11 53) x0_ack!6204))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6203) ((_ to_fp 11 53) x2_ack!6201))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6202) ((_ to_fp 11 53) b_ack!6203))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6202) ((_ to_fp 11 53) x0_ack!6204))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6202) ((_ to_fp 11 53) x1_ack!6200))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6203) ((_ to_fp 11 53) x0_ack!6204))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6203) ((_ to_fp 11 53) x1_ack!6200)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6200) ((_ to_fp 11 53) b_ack!6203))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6200)
                    ((_ to_fp 11 53) x0_ack!6204))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6202)
                  ((_ to_fp 11 53) x0_ack!6204))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6202)
                  ((_ to_fp 11 53) x0_ack!6204)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6200)
                  ((_ to_fp 11 53) x0_ack!6204))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6200)
                  ((_ to_fp 11 53) x0_ack!6204)))))

(check-sat)
(exit)
