(declare-fun xx_ack!367 () (_ BitVec 64))
(declare-fun x0_ack!368 () (_ BitVec 64))
(declare-fun x1_ack!366 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!367) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!367) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!367) ((_ to_fp 11 53) x0_ack!368)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!366)
               ((_ to_fp 11 53) x0_ack!368))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!367)
                       ((_ to_fp 11 53) x0_ack!368))
               ((_ to_fp 11 53) x0_ack!368))
       ((_ to_fp 11 53) xx_ack!367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!367)
                       ((_ to_fp 11 53) x0_ack!368)))
       ((_ to_fp 11 53) x0_ack!368)))

(check-sat)
(exit)
