(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!22)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) a_ack!22))
       ((_ to_fp 11 53) a_ack!22)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!22)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) a_ack!22))
       ((_ to_fp 11 53) a_ack!22)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!22)
                  ((_ to_fp 11 53) a_ack!22))
          ((_ to_fp 11 53) a_ack!22))
  #x4008000000000000))

(check-sat)
(exit)
