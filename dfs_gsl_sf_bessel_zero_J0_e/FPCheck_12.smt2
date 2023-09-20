(declare-fun a_ack!22 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!22)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!22)
                           ((_ to_fp 11 53) #x3fd0000000000000))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
  (fp.eq (fp.mul roundNearestTiesToEven a!1 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
