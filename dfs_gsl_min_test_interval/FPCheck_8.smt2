(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun m_ack!33 () (_ BitVec 64))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!31)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!31)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!32)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!32)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (FPCHECK_FADD_ACCURACY (CF_cos m_ack!33) #x3ff0000000000000))

(check-sat)
(exit)
