(declare-fun b_ack!586 () (_ BitVec 32))
(declare-fun a_ack!588 () (_ BitVec 32))
(declare-fun c_ack!587 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!586 #x00000000)))
(assert (not (bvslt a_ack!588 #x00000000)))
(assert (not (= #x00000000 b_ack!586)))
(assert (not (= #x00000001 b_ack!586)))
(assert (not (= #x00000000 a_ack!588)))
(assert (= #x00000001 a_ack!588))
(assert (not (bvslt b_ack!586 #x00000000)))
(assert (not (= #x00000000 b_ack!586)))
(assert (not (= #x00000001 b_ack!586)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!587))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!586))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!587))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) c_ack!587)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!587))
          ((_ to_fp 11 53) #x3cb0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!587))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
