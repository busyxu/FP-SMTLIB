(declare-fun xx_ack!349 () (_ BitVec 64))
(declare-fun x0_ack!350 () (_ BitVec 64))
(declare-fun x1_ack!346 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!347 () (_ BitVec 64))
(declare-fun y1_ack!348 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!349) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!349) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!349) ((_ to_fp 11 53) x0_ack!350)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!346)
               ((_ to_fp 11 53) x0_ack!350))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!348 y0_ack!347))

(check-sat)
(exit)
