(declare-fun mu_ack!63 () (_ BitVec 64))
(declare-fun x_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!63) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!64)
               ((_ to_fp 11 53) x_ack!64))
       ((_ to_fp 11 53) mu_ack!63)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!64)
          ((_ to_fp 11 53) x_ack!64))
  mu_ack!63))

(check-sat)
(exit)
