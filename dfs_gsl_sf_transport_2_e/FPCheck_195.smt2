(declare-fun a_ack!274 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!274) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!274) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!274))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!274)
                       ((_ to_fp 11 53) a_ack!274))
               ((_ to_fp 11 53) a_ack!274))
       ((_ to_fp 11 53) a_ack!274)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!274))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!274)
                       ((_ to_fp 11 53) a_ack!274))
               ((_ to_fp 11 53) a_ack!274))
       ((_ to_fp 11 53) a_ack!274)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3cb0000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!274)))
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!274)
                  ((_ to_fp 11 53) a_ack!274))
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
