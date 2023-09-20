(declare-fun b_ack!228 () (_ BitVec 32))
(declare-fun a_ack!230 () (_ BitVec 32))
(declare-fun c_ack!229 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (not (bvslt a_ack!230 b_ack!228)))
(assert (= #x00000000 b_ack!228))
(assert (not (bvslt a_ack!230 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!230)))
(assert (= #x00000001 a_ack!230))
(assert (bvsle #x00000000 a_ack!230))
(assert (bvsle #x00000001 a_ack!230))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!229)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!230)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.lt (fp.mul roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!230)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!2))))
(assert (FPCHECK_FADD_OVERFLOW c_ack!229 #x3ff0000000000000))

(check-sat)
(exit)
