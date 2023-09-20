(declare-fun x1_ack!5568 () (_ BitVec 64))
(declare-fun x0_ack!5572 () (_ BitVec 64))
(declare-fun x2_ack!5569 () (_ BitVec 64))
(declare-fun b_ack!5571 () (_ BitVec 64))
(declare-fun a_ack!5570 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5572) ((_ to_fp 11 53) x1_ack!5568)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5568) ((_ to_fp 11 53) x2_ack!5569)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5568)
                       ((_ to_fp 11 53) x0_ack!5572))
               ((_ to_fp 11 53) x0_ack!5572))
       ((_ to_fp 11 53) x1_ack!5568)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5568)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5568)
                       ((_ to_fp 11 53) x0_ack!5572)))
       ((_ to_fp 11 53) x0_ack!5572)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5569)
                       ((_ to_fp 11 53) x1_ack!5568))
               ((_ to_fp 11 53) x1_ack!5568))
       ((_ to_fp 11 53) x2_ack!5569)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5569)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5569)
                       ((_ to_fp 11 53) x1_ack!5568)))
       ((_ to_fp 11 53) x1_ack!5568)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5568)
                    ((_ to_fp 11 53) x0_ack!5572))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5569)
                    ((_ to_fp 11 53) x1_ack!5568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5570) ((_ to_fp 11 53) b_ack!5571))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5570) ((_ to_fp 11 53) x0_ack!5572))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5571) ((_ to_fp 11 53) x2_ack!5569))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5570) ((_ to_fp 11 53) b_ack!5571))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5570) ((_ to_fp 11 53) x0_ack!5572))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5570) ((_ to_fp 11 53) x1_ack!5568))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5571) ((_ to_fp 11 53) x0_ack!5572))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5571) ((_ to_fp 11 53) x1_ack!5568)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5568) ((_ to_fp 11 53) b_ack!5571))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5568)
                    ((_ to_fp 11 53) x0_ack!5572))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5568)
          ((_ to_fp 11 53) x0_ack!5572))))

(check-sat)
(exit)
