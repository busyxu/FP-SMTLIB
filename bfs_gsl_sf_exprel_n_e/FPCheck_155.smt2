(declare-fun a_ack!502 () (_ BitVec 32))
(declare-fun b_ack!501 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!502 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!501))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!502)))))
(assert (not (= #x00000000 a_ack!502)))
(assert (not (= #x00000001 a_ack!502)))
(assert (not (= #x00000002 a_ack!502)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!501)
       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!502)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (CF_log (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!501)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!502)))))

(check-sat)
(exit)
