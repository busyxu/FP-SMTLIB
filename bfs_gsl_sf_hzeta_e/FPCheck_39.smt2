(declare-fun a_ack!124 () (_ BitVec 64))
(declare-fun b_ack!123 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!124))
                          (CF_log b_ack!123))
                  ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!124))
                          (CF_log b_ack!123))
                  ((_ to_fp 11 53) #x40862642fefa39ef))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x404b000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x403b000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x403b000000000000))))
(assert (FPCHECK_FADD_OVERFLOW #x0000000000000000 b_ack!123))

(check-sat)
(exit)
