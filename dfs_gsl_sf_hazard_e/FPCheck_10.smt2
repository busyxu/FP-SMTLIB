(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #x4039000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!18))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!18)
                       ((_ to_fp 11 53) a_ack!18))
               ((_ to_fp 11 53) a_ack!18))
       ((_ to_fp 11 53) a_ack!18)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!18))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!18)
                       ((_ to_fp 11 53) a_ack!18))
               ((_ to_fp 11 53) a_ack!18))
       ((_ to_fp 11 53) a_ack!18)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4022000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!18)
                  ((_ to_fp 11 53) a_ack!18)))))

(check-sat)
(exit)
