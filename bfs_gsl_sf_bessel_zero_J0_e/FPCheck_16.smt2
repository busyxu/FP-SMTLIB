(declare-fun a_ack!28 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (= #x00000000 a_ack!28)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!28)
                           ((_ to_fp 11 53) #x3fd0000000000000))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
  (FPCHECK_FADD_OVERFLOW
    #x403405bb9cea78a3
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4024bc70db299eff)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven a!1 a!1))))))

(check-sat)
(exit)
