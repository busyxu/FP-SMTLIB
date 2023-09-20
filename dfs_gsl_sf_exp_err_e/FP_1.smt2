(declare-fun b_ack!22 () (_ BitVec 64))
(declare-fun a_ack!23 () (_ BitVec 64))
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!23)
                          (fp.abs ((_ to_fp 11 53) b_ack!22)))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!1)))

(check-sat)
(exit)
