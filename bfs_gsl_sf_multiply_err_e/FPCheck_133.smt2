(declare-fun a_ack!772 () (_ BitVec 64))
(declare-fun c_ack!771 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!772) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!771) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!772))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!771))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!772))
            (fp.abs ((_ to_fp 11 53) c_ack!771)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!772))
       (fp.abs ((_ to_fp 11 53) c_ack!771))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!772))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!772)
                  ((_ to_fp 11 53) c_ack!771)))))

(check-sat)
(exit)
