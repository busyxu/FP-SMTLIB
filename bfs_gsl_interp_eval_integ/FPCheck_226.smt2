(declare-fun x1_ack!2703 () (_ BitVec 64))
(declare-fun x0_ack!2707 () (_ BitVec 64))
(declare-fun x2_ack!2704 () (_ BitVec 64))
(declare-fun b_ack!2706 () (_ BitVec 64))
(declare-fun a_ack!2705 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2707) ((_ to_fp 11 53) x1_ack!2703)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2703) ((_ to_fp 11 53) x2_ack!2704)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2703)
                       ((_ to_fp 11 53) x0_ack!2707))
               ((_ to_fp 11 53) x0_ack!2707))
       ((_ to_fp 11 53) x1_ack!2703)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2703)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2703)
                       ((_ to_fp 11 53) x0_ack!2707)))
       ((_ to_fp 11 53) x0_ack!2707)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2704)
                       ((_ to_fp 11 53) x1_ack!2703))
               ((_ to_fp 11 53) x1_ack!2703))
       ((_ to_fp 11 53) x2_ack!2704)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2704)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2704)
                       ((_ to_fp 11 53) x1_ack!2703)))
       ((_ to_fp 11 53) x1_ack!2703)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2703)
                    ((_ to_fp 11 53) x0_ack!2707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2704)
                    ((_ to_fp 11 53) x1_ack!2703))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2705) ((_ to_fp 11 53) b_ack!2706))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2705) ((_ to_fp 11 53) x0_ack!2707))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) x2_ack!2704))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2705) ((_ to_fp 11 53) b_ack!2706))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2705) ((_ to_fp 11 53) x0_ack!2707))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2705) ((_ to_fp 11 53) x1_ack!2703)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2703) ((_ to_fp 11 53) a_ack!2705))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) x1_ack!2703))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2706) ((_ to_fp 11 53) x2_ack!2704))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2704)
                    ((_ to_fp 11 53) x1_ack!2703))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2705)
          ((_ to_fp 11 53) x1_ack!2703))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2705)
          ((_ to_fp 11 53) x1_ack!2703))))

(check-sat)
(exit)
