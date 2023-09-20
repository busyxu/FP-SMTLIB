(declare-fun a_ack!445 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!445) ((_ to_fp 11 53) #x4039000000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!445)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!445)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                  ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
  (not a!1)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!445)
               ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
       ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!445)
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
          ((_ to_fp 11 53) #x3fe20dd750429b62))
  #x3ff467e6dad8642a))

(check-sat)
(exit)
