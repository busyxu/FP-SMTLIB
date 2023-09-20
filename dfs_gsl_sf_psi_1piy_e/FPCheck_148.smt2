(declare-fun a_ack!230 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!230))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!230))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!230))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!230)
                           ((_ to_fp 11 53) a_ack!230))
                   ((_ to_fp 11 53) #x3cea961904954325))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3da614ea0a67bc29)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3da614ea0a67bc29))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!230)
                           ((_ to_fp 11 53) a_ack!230))
                   ((_ to_fp 11 53) #x3cea961904954325))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3da614ea0a67bc29)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3da614ea0a67bc29)
                         a!1))
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!230 a_ack!230))

(check-sat)
(exit)
