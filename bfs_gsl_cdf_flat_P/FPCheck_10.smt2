(declare-fun a_ack!62 () (_ BitVec 64))
(declare-fun x_ack!64 () (_ BitVec 64))
(declare-fun b_ack!63 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!64) ((_ to_fp 11 53) a_ack!62))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!64) ((_ to_fp 11 53) b_ack!63))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!63)
                       ((_ to_fp 11 53) a_ack!62))
               ((_ to_fp 11 53) a_ack!62))
       ((_ to_fp 11 53) b_ack!63)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!63)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!63)
                       ((_ to_fp 11 53) a_ack!62)))
       ((_ to_fp 11 53) a_ack!62)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!64)
          ((_ to_fp 11 53) a_ack!62))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!63)
          ((_ to_fp 11 53) a_ack!62))))

(check-sat)
(exit)
