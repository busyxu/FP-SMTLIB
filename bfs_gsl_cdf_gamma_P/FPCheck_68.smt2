(declare-fun b_ack!501 () (_ BitVec 64))
(declare-fun x_ack!502 () (_ BitVec 64))
(declare-fun a_ack!500 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!502)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!501)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!502)
               ((_ to_fp 11 53) b_ack!501))
       ((_ to_fp 11 53) a_ack!500)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!500) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!502)
                    ((_ to_fp 11 53) b_ack!501))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!502)
                    ((_ to_fp 11 53) b_ack!501))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!500) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!502)
                     ((_ to_fp 11 53) b_ack!501))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!500)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!500) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!500) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!502)
                    ((_ to_fp 11 53) b_ack!501))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!500)
        (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!502)
                ((_ to_fp 11 53) b_ack!501))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!502)
                     ((_ to_fp 11 53) b_ack!501))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!500) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!500 #x3ff0000000000000))

(check-sat)
(exit)
